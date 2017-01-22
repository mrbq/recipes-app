package es.crowdynamics.cook.services.recipe.impl;

import java.math.BigDecimal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import es.crowdynamics.cook.dao.IngredientDAO;
import es.crowdynamics.cook.domain.Ingredient;
import es.crowdynamics.cook.entity.IngredientEntity;
import es.crowdynamics.cook.services.recipe.IngredientService;


@Service
public class IngredientServiceImpl implements IngredientService {
	
	@Autowired
	private IngredientDAO ingredientDAO;
	
	@Transactional(rollbackFor=Exception.class)
	public void findAndRemove(BigDecimal id){
		IngredientEntity ingrediente = ingredientDAO.find(id);
		ingredientDAO.delete(ingrediente);
	}

	@Transactional(rollbackFor=Exception.class)
	public void update(Ingredient ingrediente) {
		throw new RuntimeException("Not yet implemented");
	}
}
