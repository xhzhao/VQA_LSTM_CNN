torch.setdefaulttensortype('torch.FloatTensor')

glove_opt = {
	binfilename = './glove/glove.twitter.27B.25d.txt',
	outfilename = './glove/GloVe.t7'
}
local GloVe = {}
if not paths.filep(glove_opt.outfilename) then
	GloVe = require('./bintot7.lua')
else
	GloVe = torch.load(glove_opt.outfilename)
	print('Done reading GloVe data.')
end


GloVe.distance = function (self,vec,k)
	local k = k or 1	
	--self.zeros = self.zeros or torch.zeros(self.M:size(1));
	local norm = vec:norm(2)
	vec:div(norm)
	local distances = torch.mv(self.M ,vec)
	distances , oldindex = torch.sort(distances,1,true)
	local returnwords = {}
	local returndistances = {}
	for i = 1,k do
		table.insert(returnwords, self.v2wvocab[oldindex[i]])
		table.insert(returndistances, distances[i])
	end
	return {returndistances, returnwords}
end

GloVe.word2vec = function (self,word,throwerror)
   local throwerror = throwerror or false
   local ind = self.w2vvocab[word]
   if throwerror then
		assert(ind ~= nil, 'Word does not exist in the dictionary!')
   end
	if ind == nil then
		ind = self.w2vvocab['UNK']
	end
   return self.M[ind]
end

return GloVe
