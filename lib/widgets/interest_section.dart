import 'package:flutter/material.dart';
import 'package:speaksphere/widgets/interest_badge.dart';

class InterestSection extends StatefulWidget {
  const InterestSection({super.key});

  @override
  State<InterestSection> createState() => _InterestSectionState();
}

class _InterestSectionState extends State<InterestSection> {
  final _selectedInterest = <Interest>[];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'What interests you?',
          style:
              TextStyle(fontWeight: FontWeight.w600, fontSize: 20, height: 0),
        ),
        const SizedBox(height: 9),
        const Text(
          'Select all that applies',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 13,
              color: Color.fromRGBO(144, 138, 137, 1),
              height: 0),
        ),
        const SizedBox(height: 22),
        Wrap(
          children: Interest.values.map((interest) {
            return Padding(
              padding: const EdgeInsets.only(right: 9, bottom: 9),
              child: InterestBadge(
                title: interest.title,
                isActive: _selectedInterest.contains(interest),
                onTap: () {
                  setState(() {
                    if (_selectedInterest.contains(interest)) {
                      _selectedInterest.remove(interest);
                    } else {
                      _selectedInterest.add(interest);
                    }
                  });
                },
              ),
              // const SizedBox(width: 16),
            );
          }).toList(),
        ),
        const Row(
          children: [
            InterestBadge(
              title: 'Add other',
              isActive: true,
              additional: Icons.add,
              // onTap: ,
            ),
          ],
        ),
      ],
    );
  }
}

enum Interest {
  studies('Studies'),
  reading('Reading'),
  technologies('Technologies'),
  travel('Travel'),
  psychology('Psychology'),
  gaming('Gaming'),
  tvMovies('TV/Movies'),
  sports('Sports'),
  languages('Languages'),
  fashion('Fashion'),
  fitness('Fitness'),
  pets('Pets'),
  food('Food'),
  climateChange('Climate Change'),
  selfCare('Self-care'),
  workLife('Work life'),
  culture('Culture'),
  design('Design'),
  sociology('Sociology'),
  music('Music'),
  outdoor('Outdoor'),
  networking('Networking'),
  romance('Romance'),
  shopping('Shopping'),
  sightSeeing('Sight-seeing');

  final String title;
  const Interest(this.title);
}
