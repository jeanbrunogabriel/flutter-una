class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text('Página Inicial'),
      ),
      body: Center(
        child: Image.network(
          "https://media.giphy.com/media/xT0xezQGU5xCDJuCPe/giphy.gif",
          loadingBuilder: (context, imageProvider, loadingProgress) {
            if (loadingProgress == null) {
              return Image(image: imageProvider);
            }
            return const CircularProgressIndicator();
          },
          errorBuilder: (context, error, stackTrace) {
            return const Text('Error loading image');
          },
        ),
      ),
    );
  }
}
