.class abstract Lcom/taobao/tao/remotebusiness/listener/MtopBaseListener;
.super Ljava/lang/Object;
.source "MtopBaseListener.java"


# instance fields
.field protected listener:Lmtopsdk/mtop/common/MtopListener;

.field protected mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;


# direct methods
.method protected constructor <init>(Lcom/taobao/tao/remotebusiness/MtopBusiness;Lmtopsdk/mtop/common/MtopListener;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/taobao/tao/remotebusiness/listener/MtopBaseListener;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    .line 21
    iput-object p2, p0, Lcom/taobao/tao/remotebusiness/listener/MtopBaseListener;->listener:Lmtopsdk/mtop/common/MtopListener;

    return-void
.end method
