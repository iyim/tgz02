.class public Lcom/taobao/tao/log/message/MessageInfo;
.super Ljava/lang/Object;
.source "MessageInfo.java"


# static fields
.field public static keyName:Ljava/lang/String; = "content"


# instance fields
.field public accsServiceId:Ljava/lang/String;

.field public accsTag:Ljava/lang/String;

.field public appKey:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public context:Landroid/content/Context;

.field public deviceId:Ljava/lang/String;

.field public hostName:Ljava/lang/String;

.field public publicKeyDigest:Ljava/lang/String;

.field public ttid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/taobao/tao/log/message/MessageInfo;->context:Landroid/content/Context;

    .line 23
    iput-object v0, p0, Lcom/taobao/tao/log/message/MessageInfo;->content:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/taobao/tao/log/message/MessageInfo;->appKey:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/taobao/tao/log/message/MessageInfo;->ttid:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/taobao/tao/log/message/MessageInfo;->publicKeyDigest:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/taobao/tao/log/message/MessageInfo;->deviceId:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/tao/log/TLogInitializer;->messageHostName:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/tao/log/message/MessageInfo;->hostName:Ljava/lang/String;

    .line 45
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/tao/log/TLogInitializer;->accsServiceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/tao/log/message/MessageInfo;->accsServiceId:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/tao/log/TLogInitializer;->accsTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/tao/log/message/MessageInfo;->accsTag:Ljava/lang/String;

    return-void
.end method
