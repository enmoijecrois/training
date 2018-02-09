<?php

namespace Drupal\hello\Controller;

use Drupal\Core\Controller\ControllerBase;
use Symfony\Component\HttpFoundation\Response;

class HelloRssController extends ControllerBase {


	public function content() {
		//$response = new Response();
		//return new Response();
		return [
			'#markup' => '<?xml version="1.0" encoding="windows-1252"?>
<rss version="2.0">
  <channel>
    <title>FeedForAll Sample Feed</title>
    <description>RSS is a fascinating technology. The uses for RSS are expanding daily. Take a closer look at how various industries are using the benefits of RSS in their businesses.</description>
    <link>http://www.feedforall.com/industry-solutions.htm</link>
    <category domain="www.dmoz.com">Computers/Software/Internet/Site Management/Content Management</category>
    <copyright>Copyright 2004 NotePage, Inc.</copyright>
    <docs>http://blogs.law.harvard.edu/tech/rss</docs>
    <language>en-us</language>
    <lastBuildDate>Tue, 19 Oct 2004 13:39:14 -0400</lastBuildDate>
    <managingEditor>marketing@feedforall.com</managingEditor>
    <pubDate>Tue, 19 Oct 2004 13:38:55 -0400</pubDate>
    <webMaster>webmaster@feedforall.com</webMaster>
    <generator>FeedForAll Beta1 (0.0.1.8)</generator>
    <image>
      <url>http://www.feedforall.com/ffalogo48x48.gif</url>
      <title>FeedForAll Sample Feed</title>
      <link>http://www.feedforall.com/industry-solutions.htm</link>
      <description>FeedForAll Sample Feed</description>
      <width>48</width>
      <height>48</height>
    </image>
    <item>
      <title>RSS Solutions for Restaurants</title>
      <description>&lt;b&gt;FeedForAll &lt;/b&gt;helps Restaurant&apos;s communicate with customers. Let your customers know the latest specials or events.&lt;br&gt;
&lt;br&gt;
RSS feed uses include:&lt;br&gt;
&lt;i&gt;&lt;font color=&quot;#FF0000&quot;&gt;Daily Specials &lt;br&gt;
Entertainment &lt;br&gt;
Calendar of Events &lt;/i&gt;&lt;/font&gt;</description>
      <link>http://www.feedforall.com/restaurant.htm</link>
      <category domain="www.dmoz.com">Computers/Software/Internet/Site Management/Content Management</category>
      <comments>http://www.feedforall.com/forum</comments>
      <pubDate>Tue, 19 Oct 2004 11:09:11 -0400</pubDate>
    </item>
    <item>
      <title>RSS Solutions for Schools and Colleges</title>
      <description>FeedForAll helps Educational Institutions communicate with students about school wide activities, events, and schedules.&lt;br&gt;
&lt;br&gt;
RSS feed uses include:&lt;br&gt;
&lt;i&gt;&lt;font color=&quot;#0000FF&quot;&gt;Homework Assignments &lt;br&gt;
School Cancellations &lt;br&gt;
Calendar of Events &lt;br&gt;
Sports Scores &lt;br&gt;
Clubs/Organization Meetings &lt;br&gt;
Lunches Menus &lt;/i&gt;&lt;/font&gt;</description>
      <link>http://www.feedforall.com/schools.htm</link>
      <category domain="www.dmoz.com">Computers/Software/Internet/Site Management/Content Management</category>
      <comments>http://www.feedforall.com/forum</comments>
      <pubDate>Tue, 19 Oct 2004 11:09:09 -0400</pubDate>
    </item>
    <item>
      <title>RSS Solutions for Computer Service Companies</title>
      <description>FeedForAll helps Computer Service Companies communicate with clients about cyber security and related issues. &lt;br&gt;
&lt;br&gt;
Uses include:&lt;br&gt;
&lt;i&gt;&lt;font color=&quot;#0000FF&quot;&gt;Cyber Security Alerts &lt;br&gt;
Specials&lt;br&gt;
Job Postings &lt;/i&gt;&lt;/font&gt;</description>
      <link>http://www.feedforall.com/computer-service.htm</link>
      <category domain="www.dmoz.com">Computers/Software/Internet/Site Management/Content Management</category>
      <comments>http://www.feedforall.com/forum</comments>
      <pubDate>Tue, 19 Oct 2004 11:09:07 -0400</pubDate>
    </item>
    <item>
      <title>RSS Solutions for Governments</title>
      <description>FeedForAll helps Governments communicate with the general public about positions on various issues, and keep the community aware of changes in important legislative issues. &lt;b&gt;&lt;i&gt;&lt;br&gt;
&lt;/b&gt;&lt;/i&gt;&lt;br&gt;
RSS uses Include:&lt;br&gt;
&lt;i&gt;&lt;font color=&quot;#00FF00&quot;&gt;Legislative Calendar&lt;br&gt;
Votes&lt;br&gt;
Bulletins&lt;/i&gt;&lt;/font&gt;</description>
      <link>http://www.feedforall.com/government.htm</link>
      <category domain="www.dmoz.com">Computers/Software/Internet/Site Management/Content Management</category>
      <comments>http://www.feedforall.com/forum</comments>
      <pubDate>Tue, 19 Oct 2004 11:09:05 -0400</pubDate>
    </item>
    <item>
      <title>RSS Solutions for Politicians</title>
      <description>FeedForAll helps Politicians communicate with the general public about positions on various issues, and keep the community notified of their schedule. &lt;br&gt;
&lt;br&gt;
Uses Include:&lt;br&gt;
&lt;i&gt;&lt;font color=&quot;#FF0000&quot;&gt;Blogs&lt;br&gt;
Speaking Engagements &lt;br&gt;
Statements&lt;br&gt;
 &lt;/i&gt;&lt;/font&gt;</description>
      <link>http://www.feedforall.com/politics.htm</link>
      <category domain="www.dmoz.com">Computers/Software/Internet/Site Management/Content Management</category>
      <comments>http://www.feedforall.com/forum</comments>
      <pubDate>Tue, 19 Oct 2004 11:09:03 -0400</pubDate>
    </item>
    <item>
      <title>RSS Solutions for Meteorologists</title>
      <description>FeedForAll helps Meteorologists communicate with the general public about storm warnings and weather alerts, in specific regions. Using RSS meteorologists are able to quickly disseminate urgent and life threatening weather warnings. &lt;br&gt;
&lt;br&gt;
Uses Include:&lt;br&gt;
&lt;i&gt;&lt;font color=&quot;#0000FF&quot;&gt;Weather Alerts&lt;br&gt;
Plotting Storms&lt;br&gt;
School Cancellations &lt;/i&gt;&lt;/font&gt;</description>
      <link>http://www.feedforall.com/weather.htm</link>
      <category domain="www.dmoz.com">Computers/Software/Internet/Site Management/Content Management</category>
      <comments>http://www.feedforall.com/forum</comments>
      <pubDate>Tue, 19 Oct 2004 11:09:01 -0400</pubDate>
    </item>
    <item>
      <title>RSS Solutions for Realtors &amp; Real Estate Firms</title>
      <description>FeedForAll helps Realtors and Real Estate companies communicate with clients informing them of newly available properties, and open house announcements. RSS helps to reach a targeted audience and spread the word in an inexpensive, professional manner. &lt;font color=&quot;#0000FF&quot;&gt;&lt;br&gt;
&lt;/font&gt;&lt;br&gt;
Feeds can be used for:&lt;br&gt;
&lt;i&gt;&lt;font color=&quot;#FF0000&quot;&gt;Open House Dates&lt;br&gt;
New Properties For Sale&lt;br&gt;
Mortgage Rates&lt;/i&gt;&lt;/font&gt;</description>
      <link>http://www.feedforall.com/real-estate.htm</link>
      <category domain="www.dmoz.com">Computers/Software/Internet/Site Management/Content Management</category>
      <comments>http://www.feedforall.com/forum</comments>
      <pubDate>Tue, 19 Oct 2004 11:08:59 -0400</pubDate>
    </item>
    <item>
      <title>RSS Solutions for Banks / Mortgage Companies</title>
      <description>FeedForAll helps &lt;b&gt;Banks, Credit Unions and Mortgage companies&lt;/b&gt; communicate with the general public about rate changes in a prompt and professional manner. &lt;br&gt;
&lt;br&gt;
Uses include:&lt;br&gt;
&lt;i&gt;&lt;font color=&quot;#0000FF&quot;&gt;Mortgage Rates&lt;br&gt;
Foreign Exchange Rates &lt;br&gt;
Bank Rates&lt;br&gt;
Specials&lt;/i&gt;&lt;/font&gt;</description>
      <link>http://www.feedforall.com/banks.htm</link>
      <category domain="www.dmoz.com">Computers/Software/Internet/Site Management/Content Management</category>
      <comments>http://www.feedforall.com/forum</comments>
      <pubDate>Tue, 19 Oct 2004 11:08:57 -0400</pubDate>
    </item>
    <item>
      <title>RSS Solutions for Law Enforcement</title>
      <description>&lt;b&gt;FeedForAll&lt;/b&gt; helps Law Enforcement Professionals communicate with the general public and other agencies in a prompt and efficient manner. Using RSS police are able to quickly disseminate urgent and life threatening information. &lt;br&gt;
&lt;br&gt;
Uses include:&lt;br&gt;
&lt;i&gt;&lt;font color=&quot;#0000FF&quot;&gt;Amber Alerts&lt;br&gt;
Sex Offender Community Notification &lt;br&gt;
Weather Alerts &lt;br&gt;
Scheduling &lt;br&gt;
Security Alerts &lt;br&gt;
Police Report &lt;br&gt;
Meetings&lt;/i&gt;&lt;/font&gt;</description>
      <link>http://www.feedforall.com/law-enforcement.htm</link>
      <category domain="www.dmoz.com">Computers/Software/Internet/Site Management/Content Management</category>
      <comments>http://www.feedforall.com/forum</comments>
      <pubDate>Tue, 19 Oct 2004 11:08:56 -0400</pubDate>
    </item>
  </channel>
</rss>',
			'#title' => t('Hello feed'),
		];
	}

}


