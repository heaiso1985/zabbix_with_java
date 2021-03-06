package com.isoft.iaas.openstack.keystone.model;

import java.io.Serializable;

import org.codehaus.jackson.annotate.JsonProperty;
import org.codehaus.jackson.map.annotate.JsonRootName;

@JsonRootName("endpoint")
public class Endpoint implements Serializable {

	private static final long serialVersionUID = 1L;

	private String id;

	@JsonProperty("service_id")
	private String serviceId;

	private String region;

	@JsonProperty("publicurl")
	private String publicURL;

	@JsonProperty("internalurl")
	private String internalURL;

	@JsonProperty("adminurl")
	private String adminURL;

	private boolean enabled;

	/**
	 * @return the id
	 */
	public String getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * @return the serviceId
	 */
	public String getServiceId() {
		return serviceId;
	}

	/**
	 * @param serviceId
	 *            the serviceId to set
	 */
	public void setServiceId(String serviceId) {
		this.serviceId = serviceId;
	}

	/**
	 * @return the region
	 */
	public String getRegion() {
		return region;
	}

	/**
	 * @param region
	 *            the region to set
	 */
	public void setRegion(String region) {
		this.region = region;
	}

	/**
	 * @return the publicURL
	 */
	public String getPublicURL() {
		return publicURL;
	}

	/**
	 * @param publicURL
	 *            the publicURL to set
	 */
	public void setPublicURL(String publicURL) {
		this.publicURL = publicURL;
	}

	/**
	 * @return the internalURL
	 */
	public String getInternalURL() {
		return internalURL;
	}

	/**
	 * @param internalURL
	 *            the internalURL to set
	 */
	public void setInternalURL(String internalURL) {
		this.internalURL = internalURL;
	}

	/**
	 * @return the adminURL
	 */
	public String getAdminURL() {
		return adminURL;
	}

	/**
	 * @param adminURL
	 *            the adminURL to set
	 */
	public void setAdminURL(String adminURL) {
		this.adminURL = adminURL;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Endpoint [id=" + id + ", enabled=" + enabled + ", serviceId="
				+ serviceId + ", region=" + region + ", publicURL=" + publicURL
				+ ", internalURL=" + internalURL + ", adminURL=" + adminURL
				+ "]";
	}

}
