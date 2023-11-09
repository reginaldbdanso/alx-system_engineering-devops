#!/usr/bin/python3
"""
Module that prints the titles of the first 10 hot
posts listed for a given subreddit
"""

from requests import get


def top_ten(subreddit):
    """
    function that queries the Reddit API and
    prints the titles of the first
    10 hot posts listed for a given subreddit
    """

    if subreddit is None or not isinstance(subreddit, str):
        print("None")

    user_agent = {
        'User-agent': 'Google Chrome Version 81.0.4044.129'
        }
    params = {'limit': 10}
    url = 'https://www.reddit.com/r/{}/hot/.json'.format(subreddit)

    response = get(url, headers=user_agent, params=params).json()

    try:
        my_data = response.get('data').get('children')

        for each_data in my_data:
            print(each_data.get('data').get('title'))

    except Exception as e:
        print("None")
