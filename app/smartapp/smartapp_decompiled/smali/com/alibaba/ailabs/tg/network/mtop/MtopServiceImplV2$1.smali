.class Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2$1;
.super Ljava/lang/Object;
.source "MtopServiceImplV2.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2;->createGenieMtop(Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2$1;->this$0:Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2;

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

    .line 39
    iget-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2$1;->this$0:Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2;

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2;->access$000(Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2;Ljava/lang/reflect/Method;)Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;

    move-result-object p1

    .line 40
    new-instance p2, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;

    iget-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2$1;->this$0:Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2;

    invoke-static {v0}, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2;->access$100(Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2;)Lcom/alibaba/ailabs/tg/network/Converter$Factory;

    move-result-object v0

    invoke-direct {p2, p1, p3, v0}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;-><init>(Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;[Ljava/lang/Object;Lcom/alibaba/ailabs/tg/network/Converter$Factory;)V

    return-object p2
.end method
