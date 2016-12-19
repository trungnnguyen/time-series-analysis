data(cmort)
vko=cmort[3:508]
vk1=cmort[2:507]
vk2=cmort[1:506]
mod_ar2_lr=lm(vko ~ I(vk1)+ I(vk2))
vk_yw=ar.yw(cmort)
summary(vk_yw) #summary of parameter estimates 
vk_ols=ar.ols(cmort)
summary(vk_ols) #summary of parameter estimates