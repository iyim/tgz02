.class public Lcom/aliyun/oss/model/AppendObjectRequest;
.super Lcom/aliyun/oss/model/PutObjectRequest;
.source "AppendObjectRequest.java"


# instance fields
.field private initCRC:Ljava/lang/Long;

.field private position:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/aliyun/oss/model/AppendObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/aliyun/oss/model/ObjectMetadata;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/aliyun/oss/model/ObjectMetadata;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aliyun/oss/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/aliyun/oss/model/ObjectMetadata;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/aliyun/oss/model/AppendObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/aliyun/oss/model/ObjectMetadata;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/aliyun/oss/model/ObjectMetadata;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aliyun/oss/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/aliyun/oss/model/ObjectMetadata;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getInitCRC()Ljava/lang/Long;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/aliyun/oss/model/AppendObjectRequest;->initCRC:Ljava/lang/Long;

    return-object v0
.end method

.method public getPosition()Ljava/lang/Long;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/aliyun/oss/model/AppendObjectRequest;->position:Ljava/lang/Long;

    return-object v0
.end method

.method public setInitCRC(Ljava/lang/Long;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/aliyun/oss/model/AppendObjectRequest;->initCRC:Ljava/lang/Long;

    return-void
.end method

.method public setPosition(Ljava/lang/Long;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/aliyun/oss/model/AppendObjectRequest;->position:Ljava/lang/Long;

    return-void
.end method

.method public withInitCRC(Ljava/lang/Long;)Lcom/aliyun/oss/model/AppendObjectRequest;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/AppendObjectRequest;->setInitCRC(Ljava/lang/Long;)V

    return-object p0
.end method

.method public withPosition(Ljava/lang/Long;)Lcom/aliyun/oss/model/AppendObjectRequest;
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/AppendObjectRequest;->setPosition(Ljava/lang/Long;)V

    return-object p0
.end method
