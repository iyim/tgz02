.class Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImpl$1;
.super Ljava/lang/Object;
.source "MtopServiceImpl.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImpl;->create(Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImpl;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImpl$1;->this$0:Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 27
    iget-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImpl$1;->this$0:Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImpl;

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImpl;->access$000(Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImpl;Ljava/lang/reflect/Method;)Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod;

    move-result-object p1

    .line 28
    new-instance p2, Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;

    iget-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImpl$1;->this$0:Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImpl;

    invoke-static {v0}, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImpl;->access$100(Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImpl;)Lcom/alibaba/ailabs/tg/network/Converter$Factory;

    move-result-object v0

    invoke-direct {p2, p1, p3, v0}, Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;-><init>(Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod;[Ljava/lang/Object;Lcom/alibaba/ailabs/tg/network/Converter$Factory;)V

    return-object p2
.end method
