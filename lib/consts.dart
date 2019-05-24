import 'package:flutter/material.dart';

enum ThemeType { Light, Dark }

ThemeType currentTheme = ThemeType.Light;
const String lemonLabDev = 'https://play.google.com/store/apps/developer?id=Lemon+Lab';
const List<String> listOfResults = ["فقط شيئان لا حدود لهما. الكون، وغباء البشر، ولستُ متأكدًا من الأول.\n البرت انشتاين.",
  "أكثر عنصرين شائعين في الكون هما الهيدروجين، والغباء. \n هارلان إليسون.", "الجمال يختفي مع الزمن، الغباء يبقى للأبد!",
  "إذا بدلنا عقلك بما يساويه في الحجم من الداينامايت، أعتقد لن تشعر بشيء إذا تفجر.", "هناك أشكال كثيرة للغباء، لكن النوع الذي تمتلكه هو الأفضل!",
  "يرى الأطباء ضعف البشر عند المرض، يرى المحامي شر البشر في المحاكم، نرى نحن غباء البشر في هذا التطبيق.", "من خلال مستخدمي التطبيق، احصائياتنا تخبرنا إن بين كل مئة شخص، هناك تسعة وتسعون أغبياء!",
  "الذكاء دون الهدف يعني الغباء. ", "تبدو جديًا، الجديّة هي غباء مطوّر.", "الغباء قوة، لا يساويها أي زلزال!",
  "تذكر: لا يمكنك معرفة أنك ميت عند موتك، وتذكر أن ذلك أيضًا ينطبق على الغباء.", "حتى في أقل درجات غبائك، لم تظهر بأنك ذكي إلا قليلًا!",
  "الغبي يحاول اسكات غيره، بدل أن يستمع لنفسه!", "مئة عبقري لا يمكنهم جعل دولة عظيمة، لكن غبي واحد يكفي لجعلها غبية.", "مختبر الليمون لا يقلق بشأن الذكاء الاصطناعي، نحن نقلق بشأن الغباء الاصطناعي."];


const flatButtonTextStyle = TextStyle(fontSize: 24.0, color: Colors.white);
const privacyPolicyEnglish =
    "Privacy Policy of Lemon Lab\nLemon Lab provides many services including this app."
    "\nThis page is used to inform Lemon Lab offers visitors regarding our policies with the collection use، and disclosure of Personal Information"
    "if anyone decided to use our Service، the Lemon Lab."
    "If you choose to use our Service، then you agree to the collection and use of information in relation with this policy."
    "The Personal Information that we collect are used for providing and improving the Service. "
    "We will not use or share your information with anyone except as described in this Privacy Policy. "
    "The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions، which is accessible "
    "at Lemon lab and our apps، unless otherwise defined in this Privacy Policy.\n  "
    "Information Collection and Use\n"
    "For a better experience while using our Service، we may require you to provide us with certain personally"
    "identifiable information، including but not limited to your name، phone number، and postal address. The"
    "information that we collect will be used to contact or identify you.\n"
    ""
    " Log Data\n  We want to inform you that whenever you visit our Service، we collect information that your browser sends to us"
    "that is called Log Data. This Log Data may include information such as your computer’s Internet Protocol address، "
    "browser version، pages of our Service that you visit، the time and date of your visit، the time spent"
    " on those pages، and other statistics.\n"
    ""
    "Cookies are files with small amount of data that is commonly used an anonymous unique identifier. "
    "These are sent to your browser from the website that you visit and are stored on your computer’s hard drive.\n"
    "Our apps uses these cookies to collection information and to improve our Service. You have the option to either"
    " accept or refuse these cookies، and know when a cookie is being sent to your computer. If you choose to refuse our cookies،"
    " you may not be able to use some portions of our Service.\n"
    "Service Providers\n"
    ""
    " We may employ third-party companies and individuals due to the following reasons:\n "
    "To facilitate our Service;\n To provide the Service on our behalf;\n"
    "To perform Service -related services; \n  or To assist us in analyzing how our Service is used.\n"
    ""
    "We want to inform our Service users that these third parties have access to your Personal Information."
    " The reason is to perform the tasks assigned to them on our behalf. However، they are obligated not to disclose or "
    "use the information for any other purpose.\n       Security\n"
    "We value your trust in providing us your Personal Information، thus we are striving to use commercially "
    "acceptable means of protecting it. But remember that no method of transmission over the internet، or method of "
    "electronic storage is 100% secure and reliable، and we cannot guarantee its absolute security.\n "
    "Links to Other Sites\n "
    "Our Service may contain links to other sites. If you click on a third-party link، you will be directed to that "
    "site. Note that these external sites are not operated by us. Therefore، we strongly advise you to review the Privacy Policy of these websites."
    " We have no control over، and assume no responsibility for the content، privacy policies، or practices of any third-party sites or services."
    "Children’s Privacy\n"
    "Our Services do not address anyone under the age of 6. We do not knowingly collect personal identifiable"
    "information from children under 6. In the case we discover that a child under 6 has provided us with personal information،"
    " we immediately delete this from our servers. If you are a parent or guardian and you are aware that "
    "your child has provided us with personal information، please contact us so that we will be able to do necessary actions.\n"
    ""
    "Changes to This Privacy Policy\n "
    "We may update our Privacy Policy from time to time. Thus، we advise you to review this page periodically for any "
    "changes. We will notify you of any changes by posting the new Privacy Policy on this page. These changes are "
    "effective immediately، after they are posted on this page.\n       Contact Us\n"
    ""
    "If you have any questions or suggestions about our Privacy Policy، do not hesitate to contact us at zaka7024@gmail.com.\n";
const aboutLemonLabAr =
    "مختبر الليمون فريق يسعى لنشر تطبيقات تساعد الناس وتسهل حياتهم. \n"
    "نحاول أن نستخدم أحدث الخدمات وأفضل الطرق لإيصال تطبيقاتنا إلى مستوىً منافس. "
    "تطبيقاتنا ترفيهية في غالبها، لكن قد نطوّر بعض التطبيقات التعليمية بين حين وآخر.";
