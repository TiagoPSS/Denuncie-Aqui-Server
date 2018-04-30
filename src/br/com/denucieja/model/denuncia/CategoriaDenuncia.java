package br.com.denucieja.model.denuncia;

/**
 * 
 * @author Marconi Motta
 *
 */
public enum CategoriaDenuncia {
/**
 * Atualmente apenas com 2 categorias cadastradas, apenas para testes, ap�s isso, outras categorias ser�o liberadas
 */
//	MEIO_AMBIENTE("Meio Ambiente","Meio Ambiente"),
//	ACESSIBILIDADE("Acessibilidade","Acessibilidade"),
	AGUA_E_ENERGIA("�gua e Energia","�gua e Energia"),
//	EDUCACAO("Educa��o","Educa��o"),
//	LIXO("Lixo","Lixo"),
//	OBRAS("Obras","Obras"),
//	SAUDE("Sa�de","Sa�de"),
	SEGURANCA("Seguran�a","Seguran�a");
//	SOCIAL("Social","Social"),
//	MOBILIDADE("Mobilidade","Mobilidade"),
//	PROPONHA("Proponha","Proponha");
	
	
	private String label;
	private String value;
	
	private CategoriaDenuncia(String label, String value){
		this.label = label;
		this.value = value;
	}
	
	public static CategoriaDenuncia findByName(String name){
	    for(CategoriaDenuncia v : values()){
	        if( v.toString().equals(name) || v.getLabel().equals(name) || v.getValue().equals(name)){
	            return v;
	        }
	    }
	    return null;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}
}
