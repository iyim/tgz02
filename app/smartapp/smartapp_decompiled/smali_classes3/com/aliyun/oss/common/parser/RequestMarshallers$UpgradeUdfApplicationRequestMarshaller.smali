.class public final Lcom/aliyun/oss/common/parser/RequestMarshallers$UpgradeUdfApplicationRequestMarshaller;
.super Ljava/lang/Object;
.source "RequestMarshallers.java"

# interfaces
.implements Lcom/aliyun/oss/common/parser/RequestMarshallers$RequestMarshaller2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/oss/common/parser/RequestMarshallers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpgradeUdfApplicationRequestMarshaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aliyun/oss/common/parser/RequestMarshallers$RequestMarshaller2<",
        "Lcom/aliyun/oss/model/UpgradeUdfApplicationRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public bridge synthetic marshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 746
    check-cast p1, Lcom/aliyun/oss/model/UpgradeUdfApplicationRequest;

    invoke-virtual {p0, p1}, Lcom/aliyun/oss/common/parser/RequestMarshallers$UpgradeUdfApplicationRequestMarshaller;->marshall(Lcom/aliyun/oss/model/UpgradeUdfApplicationRequest;)[B

    move-result-object p1

    return-object p1
.end method

.method public marshall(Lcom/aliyun/oss/model/UpgradeUdfApplicationRequest;)[B
    .locals 3

    .line 750
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<UpgradeUDFApplicationConfiguration>"

    .line 752
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<ImageVersion>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/aliyun/oss/model/UpgradeUdfApplicationRequest;->getImageVersion()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "</ImageVersion>"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "</UpgradeUDFApplicationConfiguration>"

    .line 754
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 758
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "utf-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 760
    new-instance v0, Lcom/aliyun/oss/ClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported encoding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/aliyun/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
