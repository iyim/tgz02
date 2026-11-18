.class public Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem;
.super Ljava/lang/Object;
.source "MtopBaseItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;
    }
.end annotation


# instance fields
.field public model:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getModel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem;->model:Ljava/util/List;

    return-object v0
.end method

.method public setModel(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;",
            ">;)V"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem;->model:Ljava/util/List;

    return-void
.end method
