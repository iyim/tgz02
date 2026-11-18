.class public Lcom/alibaba/ailabs/childmode/mtop/KidModeUpdateResponseData;
.super Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;
.source "KidModeUpdateResponseData.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private model:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getModel()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/alibaba/ailabs/childmode/mtop/KidModeUpdateResponseData;->model:I

    return v0
.end method

.method public setModel(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/alibaba/ailabs/childmode/mtop/KidModeUpdateResponseData;->model:I

    return-void
.end method
