.class public Lcom/uc/webview/export/extension/ExtImageDecoder$ExtImageDecoderParam;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/extension/ExtImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtImageDecoderParam"
.end annotation


# instance fields
.field public decoderPath:Ljava/lang/String;

.field public dependedPath:[Ljava/lang/String;

.field public filenameExtension:Ljava/lang/String;

.field public format:Ljava/lang/String;

.field public headerLength:I

.field public progressiveDecode:Z

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 59
    iput-object v0, p0, Lcom/uc/webview/export/extension/ExtImageDecoder$ExtImageDecoderParam;->format:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/uc/webview/export/extension/ExtImageDecoder$ExtImageDecoderParam;->version:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/uc/webview/export/extension/ExtImageDecoder$ExtImageDecoderParam;->decoderPath:Ljava/lang/String;

    const/4 v1, 0x0

    .line 62
    iput-object v1, p0, Lcom/uc/webview/export/extension/ExtImageDecoder$ExtImageDecoderParam;->dependedPath:[Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/uc/webview/export/extension/ExtImageDecoder$ExtImageDecoderParam;->filenameExtension:Ljava/lang/String;

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/uc/webview/export/extension/ExtImageDecoder$ExtImageDecoderParam;->headerLength:I

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/uc/webview/export/extension/ExtImageDecoder$ExtImageDecoderParam;->progressiveDecode:Z

    return-void
.end method
