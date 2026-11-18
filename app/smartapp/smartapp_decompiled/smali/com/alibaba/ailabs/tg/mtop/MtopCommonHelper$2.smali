.class Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2;
.super Ljava/lang/Object;
.source "MtopCommonHelper.java"

# interfaces
.implements Lcom/taobao/tao/remotebusiness/IRemoteBaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper;->asyncComRequest(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$OnComResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper;

.field final synthetic val$l:Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$OnComResponseListener;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper;Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$OnComResponseListener;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2;->this$0:Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper;

    iput-object p2, p0, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2;->val$l:Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$OnComResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 0

    .line 208
    new-instance p1, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2$3;

    invoke-direct {p1, p0, p2}, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2$3;-><init>(Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2;Lmtopsdk/mtop/domain/MtopResponse;)V

    invoke-static {p1}, Lcom/alibaba/ailabs/tg/thread/MainTaskHandler;->post(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/BaseOutDo;Ljava/lang/Object;)V
    .locals 0

    .line 188
    new-instance p1, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2$2;

    invoke-direct {p1, p0, p2}, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2$2;-><init>(Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2;Lmtopsdk/mtop/domain/MtopResponse;)V

    invoke-static {p1}, Lcom/alibaba/ailabs/tg/thread/MainTaskHandler;->post(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onSystemError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 0

    .line 173
    new-instance p1, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2$1;

    invoke-direct {p1, p0, p2}, Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2$1;-><init>(Lcom/alibaba/ailabs/tg/mtop/MtopCommonHelper$2;Lmtopsdk/mtop/domain/MtopResponse;)V

    invoke-static {p1}, Lcom/alibaba/ailabs/tg/thread/MainTaskHandler;->post(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
