package io.javabrains.springbootstarter.topic;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;

@Service

public class TopicService {
	private List<Topic> topics= new ArrayList<>(Arrays.asList(new Topic("spring","spring framework","spring framework Des"),
				new Topic("java","spring framework","spring framework Des"),
				new Topic("php","spring framework","spring framework Des")));
	
	
	public List<Topic> getalltopics()
	{
		
		return topics;
	}
	public Topic getTopic(String id)
	{
		return topics.stream().filter(t ->t.getId().equals(id)).findFirst().get();
	}
	
	public void addTopic(Topic topic) {
		topics.add(topic);
	}
	public void updateTopic(String id,Topic topic) {
		for(int i=0;i<topics.size();i++)
		{
			
			Topic t=topics.get(i);
			if(t.getId().equals(id))
			{
				topics.set(i, topic);
				return;
			}
			
		}
	}
	
	public void deletetopic(String id)
	{
	topics.removeIf(t -> t.getId().equals(id));
	}
	}
	

