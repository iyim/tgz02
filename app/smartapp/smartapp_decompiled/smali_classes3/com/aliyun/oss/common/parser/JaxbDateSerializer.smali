.class public Lcom/aliyun/oss/common/parser/JaxbDateSerializer;
.super Ljavax/xml/bind/annotation/adapters/XmlAdapter;
.source "JaxbDateSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/xml/bind/annotation/adapters/XmlAdapter<",
        "Ljava/lang/String;",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljavax/xml/bind/annotation/adapters/XmlAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic marshal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Lcom/aliyun/oss/common/parser/JaxbDateSerializer;->marshal(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public marshal(Ljava/util/Date;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    invoke-static {p1}, Lcom/aliyun/oss/common/utils/DateUtil;->formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic unmarshal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/aliyun/oss/common/parser/JaxbDateSerializer;->unmarshal(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public unmarshal(Ljava/lang/String;)Ljava/util/Date;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    invoke-static {p1}, Lcom/aliyun/oss/common/utils/DateUtil;->parseRfc822Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method
