.class public Lcom/uc/base/net/unet/util/IPEndPoint;
.super Ljava/lang/Object;
.source "IPEndPoint.java"


# static fields
.field private static sEmptyEp:Lcom/uc/base/net/unet/util/IPEndPoint;


# instance fields
.field public ip:Ljava/lang/String;

.field public port:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/uc/base/net/unet/util/IPEndPoint;

    invoke-direct {v0}, Lcom/uc/base/net/unet/util/IPEndPoint;-><init>()V

    sput-object v0, Lcom/uc/base/net/unet/util/IPEndPoint;->sEmptyEp:Lcom/uc/base/net/unet/util/IPEndPoint;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 12
    iput-object v0, p0, Lcom/uc/base/net/unet/util/IPEndPoint;->ip:Ljava/lang/String;

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/uc/base/net/unet/util/IPEndPoint;->port:I

    return-void
.end method

.method public static parseFromString(Ljava/lang/String;)Lcom/uc/base/net/unet/util/IPEndPoint;
    .locals 4

    .line 17
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    sget-object p0, Lcom/uc/base/net/unet/util/IPEndPoint;->sEmptyEp:Lcom/uc/base/net/unet/util/IPEndPoint;

    return-object p0

    .line 21
    :cond_0
    new-instance v0, Lcom/uc/base/net/unet/util/IPEndPoint;

    invoke-direct {v0}, Lcom/uc/base/net/unet/util/IPEndPoint;-><init>()V

    const/16 v1, 0x50

    .line 22
    iput v1, v0, Lcom/uc/base/net/unet/util/IPEndPoint;->port:I

    .line 25
    :try_start_0
    new-instance v1, Ljava/net/URI;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/uc/base/net/unet/util/IPEndPoint;->ip:Ljava/lang/String;

    .line 27
    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v1

    iput v1, v0, Lcom/uc/base/net/unet/util/IPEndPoint;->port:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 30
    iput-object p0, v0, Lcom/uc/base/net/unet/util/IPEndPoint;->ip:Ljava/lang/String;

    :goto_0
    return-object v0
.end method
