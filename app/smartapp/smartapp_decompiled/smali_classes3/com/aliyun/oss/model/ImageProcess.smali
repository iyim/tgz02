.class public Lcom/aliyun/oss/model/ImageProcess;
.super Ljava/lang/Object;
.source "ImageProcess.java"


# instance fields
.field private compliedHost:Ljava/lang/String;

.field private sourceFileProtect:Ljava/lang/Boolean;

.field private sourceFileProtectSuffix:Ljava/lang/String;

.field private styleDelimiters:Ljava/lang/String;

.field private supportAtStyle:Ljava/lang/Boolean;

.field private version:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/aliyun/oss/model/ImageProcess;->compliedHost:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/aliyun/oss/model/ImageProcess;->sourceFileProtect:Ljava/lang/Boolean;

    .line 28
    iput-object p3, p0, Lcom/aliyun/oss/model/ImageProcess;->sourceFileProtectSuffix:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/aliyun/oss/model/ImageProcess;->styleDelimiters:Ljava/lang/String;

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/aliyun/oss/model/ImageProcess;->supportAtStyle:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/aliyun/oss/model/ImageProcess;->compliedHost:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/aliyun/oss/model/ImageProcess;->sourceFileProtect:Ljava/lang/Boolean;

    .line 38
    iput-object p3, p0, Lcom/aliyun/oss/model/ImageProcess;->sourceFileProtectSuffix:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/aliyun/oss/model/ImageProcess;->styleDelimiters:Ljava/lang/String;

    .line 40
    iput-object p5, p0, Lcom/aliyun/oss/model/ImageProcess;->supportAtStyle:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getCompliedHost()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/aliyun/oss/model/ImageProcess;->compliedHost:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceFileProtectSuffix()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/aliyun/oss/model/ImageProcess;->sourceFileProtectSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public getStyleDelimiters()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/aliyun/oss/model/ImageProcess;->styleDelimiters:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/Integer;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/aliyun/oss/model/ImageProcess;->version:Ljava/lang/Integer;

    return-object v0
.end method

.method public isSourceFileProtect()Ljava/lang/Boolean;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/aliyun/oss/model/ImageProcess;->sourceFileProtect:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isSupportAtStyle()Ljava/lang/Boolean;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/aliyun/oss/model/ImageProcess;->supportAtStyle:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setCompliedHost(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/aliyun/oss/model/ImageProcess;->compliedHost:Ljava/lang/String;

    return-void
.end method

.method public setSourceFileProtect(Ljava/lang/Boolean;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/aliyun/oss/model/ImageProcess;->sourceFileProtect:Ljava/lang/Boolean;

    return-void
.end method

.method public setSourceFileProtectSuffix(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/aliyun/oss/model/ImageProcess;->sourceFileProtectSuffix:Ljava/lang/String;

    return-void
.end method

.method public setStyleDelimiters(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/aliyun/oss/model/ImageProcess;->styleDelimiters:Ljava/lang/String;

    return-void
.end method

.method public setSupportAtStyle(Ljava/lang/Boolean;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/aliyun/oss/model/ImageProcess;->supportAtStyle:Ljava/lang/Boolean;

    return-void
.end method

.method public setVersion(Ljava/lang/Integer;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/aliyun/oss/model/ImageProcess;->version:Ljava/lang/Integer;

    return-void
.end method
