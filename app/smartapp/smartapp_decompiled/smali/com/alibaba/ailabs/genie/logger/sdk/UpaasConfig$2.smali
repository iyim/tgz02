.class Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig$2;
.super Ljava/lang/Object;
.source "UpaasConfig.java"

# interfaces
.implements Lcom/alibaba/mbg/unet/IProxyDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->setProxy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig$2;->this$0:Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateProxyInfo(Ljava/lang/String;)Lcom/alibaba/mbg/unet/IProxyDelegate$ProxyInfo;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onRequestComplete(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
