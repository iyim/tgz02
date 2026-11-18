.class public final Lcom/aliyun/oss/common/parser/RequestMarshallers$CreateBucketRequestMarshaller;
.super Ljava/lang/Object;
.source "RequestMarshallers.java"

# interfaces
.implements Lcom/aliyun/oss/common/parser/RequestMarshallers$RequestMarshaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/oss/common/parser/RequestMarshallers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CreateBucketRequestMarshaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aliyun/oss/common/parser/RequestMarshallers$RequestMarshaller<",
        "Lcom/aliyun/oss/model/CreateBucketRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public marshall(Lcom/aliyun/oss/model/CreateBucketRequest;)Lcom/aliyun/oss/common/comm/io/FixedLengthInputStream;
    .locals 3

    .line 215
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 216
    invoke-virtual {p1}, Lcom/aliyun/oss/model/CreateBucketRequest;->getLocationConstraint()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/aliyun/oss/model/CreateBucketRequest;->getStorageClass()Lcom/aliyun/oss/model/StorageClass;

    move-result-object v1

    if-eqz v1, :cond_3

    :cond_0
    const-string v1, "<CreateBucketConfiguration>"

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    invoke-virtual {p1}, Lcom/aliyun/oss/model/CreateBucketRequest;->getLocationConstraint()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<LocationConstraint>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/aliyun/oss/model/CreateBucketRequest;->getLocationConstraint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</LocationConstraint>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    :cond_1
    invoke-virtual {p1}, Lcom/aliyun/oss/model/CreateBucketRequest;->getStorageClass()Lcom/aliyun/oss/model/StorageClass;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<StorageClass>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/aliyun/oss/model/CreateBucketRequest;->getStorageClass()Lcom/aliyun/oss/model/StorageClass;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/oss/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</StorageClass>"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string p1, "</CreateBucketConfiguration>"

    .line 224
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    :cond_3
    sget-object p1, Lcom/aliyun/oss/common/parser/RequestMarshallers;->stringMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$StringMarshaller;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aliyun/oss/common/parser/RequestMarshallers$StringMarshaller;->marshall(Ljava/lang/String;)Lcom/aliyun/oss/common/comm/io/FixedLengthInputStream;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic marshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 211
    check-cast p1, Lcom/aliyun/oss/model/CreateBucketRequest;

    invoke-virtual {p0, p1}, Lcom/aliyun/oss/common/parser/RequestMarshallers$CreateBucketRequestMarshaller;->marshall(Lcom/aliyun/oss/model/CreateBucketRequest;)Lcom/aliyun/oss/common/comm/io/FixedLengthInputStream;

    move-result-object p1

    return-object p1
.end method
