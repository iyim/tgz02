.class Lanet/channel/util/HttpSslUtil$AllowAllHostnameVerifier;
.super Ljava/lang/Object;
.source "HttpSslUtil.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/util/HttpSslUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AllowAllHostnameVerifier"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lanet/channel/util/HttpSslUtil$1;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lanet/channel/util/HttpSslUtil$AllowAllHostnameVerifier;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
