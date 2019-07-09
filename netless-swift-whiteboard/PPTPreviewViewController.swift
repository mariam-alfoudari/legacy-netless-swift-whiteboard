//
//  PPTPreviewViewController.swift
//  netless-swift-whiteboard
//
//  Created by TaoZeyu on 2019/7/9.
//  Copyright © 2019 伍双. All rights reserved.
//
import UIKit

struct PPTData {
    let id: Int
    let preview: String
    let width: CGFloat
    let height: CGFloat
    let scenes: Array<String>
}

let PPTDatas: Array<PPTData> = [
    PPTData(id: 1, preview: "img_ppt1", width: 960, height: 540, scenes: [
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/0fdaca08219a4531a64ec1a623b115fb/slide/slide1.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/0fdaca08219a4531a64ec1a623b115fb/slide/slide2.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/0fdaca08219a4531a64ec1a623b115fb/slide/slide3.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/0fdaca08219a4531a64ec1a623b115fb/slide/slide4.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/0fdaca08219a4531a64ec1a623b115fb/slide/slide5.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/0fdaca08219a4531a64ec1a623b115fb/slide/slide6.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/0fdaca08219a4531a64ec1a623b115fb/slide/slide7.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/0fdaca08219a4531a64ec1a623b115fb/slide/slide8.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/0fdaca08219a4531a64ec1a623b115fb/slide/slide9.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/0fdaca08219a4531a64ec1a623b115fb/slide/slide10.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/0fdaca08219a4531a64ec1a623b115fb/slide/slide11.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/0fdaca08219a4531a64ec1a623b115fb/slide/slide12.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/0fdaca08219a4531a64ec1a623b115fb/slide/slide13.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/0fdaca08219a4531a64ec1a623b115fb/slide/slide14.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/0fdaca08219a4531a64ec1a623b115fb/slide/slide15.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/0fdaca08219a4531a64ec1a623b115fb/slide/slide16.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/0fdaca08219a4531a64ec1a623b115fb/slide/slide17.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/0fdaca08219a4531a64ec1a623b115fb/slide/slide18.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/0fdaca08219a4531a64ec1a623b115fb/slide/slide19.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/0fdaca08219a4531a64ec1a623b115fb/slide/slide20.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/0fdaca08219a4531a64ec1a623b115fb/slide/slide21.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/0fdaca08219a4531a64ec1a623b115fb/slide/slide22.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/0fdaca08219a4531a64ec1a623b115fb/slide/slide23.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/0fdaca08219a4531a64ec1a623b115fb/slide/slide24.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/0fdaca08219a4531a64ec1a623b115fb/slide/slide25.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/0fdaca08219a4531a64ec1a623b115fb/slide/slide26.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/0fdaca08219a4531a64ec1a623b115fb/slide/slide27.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/0fdaca08219a4531a64ec1a623b115fb/slide/slide28.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/0fdaca08219a4531a64ec1a623b115fb/slide/slide29.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/0fdaca08219a4531a64ec1a623b115fb/slide/slide30.xml"
    ]),
    PPTData(id: 2, preview: "img_ppt2", width: 960, height: 540,scenes: [
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/9614241b82d24097a6e926fbd1f8bf30/slide/slide1.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/9614241b82d24097a6e926fbd1f8bf30/slide/slide2.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/9614241b82d24097a6e926fbd1f8bf30/slide/slide3.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/9614241b82d24097a6e926fbd1f8bf30/slide/slide4.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/9614241b82d24097a6e926fbd1f8bf30/slide/slide5.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/9614241b82d24097a6e926fbd1f8bf30/slide/slide6.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/9614241b82d24097a6e926fbd1f8bf30/slide/slide7.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/9614241b82d24097a6e926fbd1f8bf30/slide/slide8.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/9614241b82d24097a6e926fbd1f8bf30/slide/slide9.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/9614241b82d24097a6e926fbd1f8bf30/slide/slide10.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/9614241b82d24097a6e926fbd1f8bf30/slide/slide11.xml",
        "https://white-cn-doc-convert.oss-cn-hangzhou.aliyuncs.com/dynamicConvert/9614241b82d24097a6e926fbd1f8bf30/slide/slide12.xml"
    ]),
    PPTData(id: 3, preview: "img_ppt3", width: 960, height: 540,scenes: [
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/1.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/2.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/3.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/4.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/5.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/6.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/7.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/8.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/9.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/10.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/11.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/12.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/13.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/14.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/15.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/16.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/17.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/18.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/19.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/20.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/21.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/22.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/23.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/24.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/25.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/26.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/27.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/28.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/29.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/30.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/31.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/32.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/33.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/34.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/35.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/36.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/37.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/38.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/39.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/40.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/6c537d1380584f4b82a8b521336fcfbe/41.png"
    ]),
    PPTData(id: 4, preview: "img_ppt4", width: 960, height: 540,scenes: [
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/1.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/2.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/3.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/4.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/5.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/6.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/7.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/8.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/9.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/10.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/11.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/12.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/13.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/14.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/15.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/16.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/17.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/18.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/19.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/20.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/21.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/22.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/23.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/24.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/25.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/26.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/27.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/28.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/29.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/30.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/31.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/32.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/33.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/34.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/35.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/36.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/37.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/dbd36235042547f8888e9d82594c1b27/38.png"
    ]),
    PPTData(id: 5, preview: "img_ppt5", width: 960, height: 540,scenes: [
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/1.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/2.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/3.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/4.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/5.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/6.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/7.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/8.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/9.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/10.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/11.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/12.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/13.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/14.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/15.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/16.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/17.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/18.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/19.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/20.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/21.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/22.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/23.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/24.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/25.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/26.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/27.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/28.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/29.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/30.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/31.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/32.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/33.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/34.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/35.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/36.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/37.png",
        "https://netless-agora-whiteboard.oss-cn-hangzhou.aliyuncs.com/staticConvert/79b8340e6e814d919f47293376102013/38.png"
    ])
]

class PPTPreviewViewController: ViewController, UITableViewDataSource, UITableViewDelegate {
    
    public var room: WhiteRoom?
    private var tableView = UITableView()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "演示文档"
        
        if let nav = self.navigationController?.navigationBar {
            nav.barStyle = UIBarStyle.black
            nav.barTintColor = Theme.mainColor
            nav.tintColor = UIColor.white
        }
        self.view.backgroundColor = Theme.bgGray
        
        tableView = UITableView(frame: view.bounds)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        
        let leftBtn = UIBarButtonItem(title: "返回", style: .plain, target: self, action: #selector(clickGoBack))
        
        self.navigationItem.leftBarButtonItem = leftBtn
        self.view.addSubview(tableView)
    }
    
    @objc func clickGoBack() {
        self.dismiss(animated: true, completion: nil);
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let subviewTag = 100
        let data = PPTDatas[indexPath.row]
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: String(indexPath.row))
        cell.backgroundColor = Theme.bgGray
        
        var sceneImage: UIImageView? = cell.viewWithTag(subviewTag) as? UIImageView
        
        if sceneImage == nil {
            sceneImage = UIImageView()
            cell.addSubview(sceneImage!)
            sceneImage!.backgroundColor = UIColor.white
            sceneImage!.contentMode = .scaleAspectFit
            sceneImage!.tag = subviewTag
            sceneImage!.snp.makeConstraints { (make) -> Void in
                make.size.equalTo(CGSize(width: 192, height: 108))
                make.center.equalTo(cell)
            }
        }
        sceneImage!.image = UIImage(named: data.preview)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PPTDatas.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 160
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let data = PPTDatas[indexPath.row]
        let dir = "/defaultPPT" + String(data.id)
        var scenes: Array<WhiteScene> = []
        
        for i in 0...(data.scenes.count - 1) {
            let ppt = WhitePptPage()
            
            ppt.src = data.scenes[i]
            ppt.width = data.width
            ppt.height = data.height
            
            scenes.append(WhiteScene(name: String(i), ppt:ppt))
        }
        self.room!.putScenes(dir, scenes: scenes, index: 0)
        self.room!.setScenePath(dir + "/0")
        
        self.dismiss(animated: true, completion: nil);
    }
}
