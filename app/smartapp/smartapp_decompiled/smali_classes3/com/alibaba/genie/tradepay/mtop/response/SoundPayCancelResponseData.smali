.class public Lcom/alibaba/genie/tradepay/mtop/response/SoundPayCancelResponseData;
.super Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;
.source "SoundPayCancelResponseData.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private model:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getModel()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/alibaba/genie/tradepay/mtop/response/SoundPayCancelResponseData;->model:Z

    return v0
.end method

.method public setModel(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/alibaba/genie/tradepay/mtop/response/SoundPayCancelResponseData;->model:Z

    return-void
.end method
