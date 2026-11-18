.class Lcom/aliyun/oss/common/comm/DefaultServiceClient$1;
.super Ljava/lang/Object;
.source "DefaultServiceClient.java"

# interfaces
.implements Lorg/apache/http/conn/ssl/TrustStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/oss/common/comm/DefaultServiceClient;->createHttpClientConnectionManager()Lorg/apache/http/conn/HttpClientConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/oss/common/comm/DefaultServiceClient;


# direct methods
.method constructor <init>(Lcom/aliyun/oss/common/comm/DefaultServiceClient;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/aliyun/oss/common/comm/DefaultServiceClient$1;->this$0:Lcom/aliyun/oss/common/comm/DefaultServiceClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
