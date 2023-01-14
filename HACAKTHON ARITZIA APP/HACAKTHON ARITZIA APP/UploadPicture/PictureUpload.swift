//
//  PictureUpload.swift
//  HACAKTHON ARITZIA APP
//
//  Created by Shadan Namazi on 2023-01-14.
//

import SwiftUI

struct PictureUpload: View {
    
    @State var shouldShowImagePicker = false
    @State var image: UIImage?
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    ZStack(alignment: .top) {
                        Button {
                            shouldShowImagePicker.toggle()
                        } label: {
                            VStack {
                                if let image = self.image {
                                    ZStack(alignment: .bottom) {
                                        Image("upload")
                                            .resizable()
                                            .cornerRadius(20)
                                            .frame(width: 120)
                                            .scaledToFit()
                                                        .padding()
                                        
                                    }
                                    .frame(width: 120, height: 210)
//                                    Image(uiImage: image)
//                                        .resizable()
//                                        .scaledToFill()
//                                        .frame(width: 143, height: 143)
//                                        .cornerRadius(80)
                                } else {
                                    Image(systemName: "plus.app")
                                        .font(.system(size: 80))
                                        .padding()
                                        .foregroundColor(Color(.label))
                                }
                            }
                            
                        }
                    }
                }
                
                
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .fullScreenCover(isPresented: $shouldShowImagePicker, onDismiss: nil) {
            //ImagePicker(sourceType: .photoLibrary, image: self.$image)
            ImagePicker(image: $image)
                .ignoresSafeArea()
        }
    }
}

struct PictureUpload_Previews: PreviewProvider {
    static var previews: some View {
        PictureUpload()
    }
}

struct ImagePicker: UIViewControllerRepresentable {

    @Binding var image: UIImage?

    private let controller = UIImagePickerController()

    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }

    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

        let parent: ImagePicker

        init(parent: ImagePicker) {
            self.parent = parent
        }

        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            parent.image = info[.originalImage] as? UIImage
            picker.dismiss(animated: true)
        }

        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            picker.dismiss(animated: true)
        }

    }

    func makeUIViewController(context: Context) -> some UIViewController {
        controller.delegate = context.coordinator
        return controller
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {

    }

}
