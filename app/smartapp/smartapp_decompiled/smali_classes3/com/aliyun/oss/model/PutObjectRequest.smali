.class public Lcom/aliyun/oss/model/PutObjectRequest;
.super Lcom/aliyun/oss/model/GenericRequest;
.source "PutObjectRequest.java"


# instance fields
.field private callback:Lcom/aliyun/oss/model/Callback;

.field private file:Ljava/io/File;

.field private inputStream:Ljava/io/InputStream;

.field private metadata:Lcom/aliyun/oss/model/ObjectMetadata;

.field private process:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/aliyun/oss/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/aliyun/oss/model/ObjectMetadata;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/aliyun/oss/model/ObjectMetadata;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iput-object p3, p0, Lcom/aliyun/oss/model/PutObjectRequest;->file:Ljava/io/File;

    .line 42
    iput-object p4, p0, Lcom/aliyun/oss/model/PutObjectRequest;->metadata:Lcom/aliyun/oss/model/ObjectMetadata;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/aliyun/oss/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/aliyun/oss/model/ObjectMetadata;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/aliyun/oss/model/ObjectMetadata;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iput-object p3, p0, Lcom/aliyun/oss/model/PutObjectRequest;->inputStream:Ljava/io/InputStream;

    .line 52
    iput-object p4, p0, Lcom/aliyun/oss/model/PutObjectRequest;->metadata:Lcom/aliyun/oss/model/ObjectMetadata;

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/aliyun/oss/model/Callback;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/aliyun/oss/model/PutObjectRequest;->callback:Lcom/aliyun/oss/model/Callback;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/aliyun/oss/model/PutObjectRequest;->file:Ljava/io/File;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/aliyun/oss/model/PutObjectRequest;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getMetadata()Lcom/aliyun/oss/model/ObjectMetadata;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/aliyun/oss/model/PutObjectRequest;->metadata:Lcom/aliyun/oss/model/ObjectMetadata;

    return-object v0
.end method

.method public getProcess()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/aliyun/oss/model/PutObjectRequest;->process:Ljava/lang/String;

    return-object v0
.end method

.method public setCallback(Lcom/aliyun/oss/model/Callback;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/aliyun/oss/model/PutObjectRequest;->callback:Lcom/aliyun/oss/model/Callback;

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/aliyun/oss/model/PutObjectRequest;->file:Ljava/io/File;

    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/aliyun/oss/model/PutObjectRequest;->inputStream:Ljava/io/InputStream;

    return-void
.end method

.method public setMetadata(Lcom/aliyun/oss/model/ObjectMetadata;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/aliyun/oss/model/PutObjectRequest;->metadata:Lcom/aliyun/oss/model/ObjectMetadata;

    return-void
.end method

.method public setProcess(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/aliyun/oss/model/PutObjectRequest;->process:Ljava/lang/String;

    return-void
.end method
