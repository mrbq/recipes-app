package es.crowdynamics.cook.services.recipe;

import java.math.BigDecimal;

import es.crowdynamics.cook.domain.Recipe;

public interface IngredientService {
	
	public void findAndRemove(BigDecimal id);
	public void updateingredient(Ingredient ingrediente);
}