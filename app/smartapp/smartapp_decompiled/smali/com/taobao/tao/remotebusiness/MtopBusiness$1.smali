.class Lcom/taobao/tao/remotebusiness/MtopBusiness$1;
.super Ljava/lang/Object;
.source "MtopBusiness.java"

# interfaces
.implements Lcom/taobao/tao/remotebusiness/IRemoteBaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/tao/remotebusiness/MtopBusiness;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/tao/remotebusiness/MtopBusiness;


# direct methods
.method constructor <init>(Lcom/taobao/tao/remotebusiness/MtopBusiness;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/taobao/tao/remotebusiness/MtopBusiness$1;->this$0:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/BaseOutDo;Ljava/lang/Object;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onSystemError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
