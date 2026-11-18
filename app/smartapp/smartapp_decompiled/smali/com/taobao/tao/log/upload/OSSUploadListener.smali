.class public abstract Lcom/taobao/tao/log/upload/OSSUploadListener;
.super Ljava/lang/Object;
.source "OSSUploadListener.java"

# interfaces
.implements Lcom/taobao/tao/log/upload/FileUploadListener;


# instance fields
.field public contentType:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public ossEndpoint:Ljava/lang/String;

.field public ossObjectKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/taobao/tao/log/upload/OSSUploadListener;->fileName:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/taobao/tao/log/upload/OSSUploadListener;->contentType:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/taobao/tao/log/upload/OSSUploadListener;->ossObjectKey:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/taobao/tao/log/upload/OSSUploadListener;->ossEndpoint:Ljava/lang/String;

    return-void
.end method
