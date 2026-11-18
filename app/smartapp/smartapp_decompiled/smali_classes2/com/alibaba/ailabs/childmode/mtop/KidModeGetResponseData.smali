.class public Lcom/alibaba/ailabs/childmode/mtop/KidModeGetResponseData;
.super Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;
.source "KidModeGetResponseData.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private model:Lcom/alibaba/ailabs/childmode/model/ChildModeInfo;


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
.method public getModel()Lcom/alibaba/ailabs/childmode/model/ChildModeInfo;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/mtop/KidModeGetResponseData;->model:Lcom/alibaba/ailabs/childmode/model/ChildModeInfo;

    return-object v0
.end method

.method public setModel(Lcom/alibaba/ailabs/childmode/model/ChildModeInfo;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/mtop/KidModeGetResponseData;->model:Lcom/alibaba/ailabs/childmode/model/ChildModeInfo;

    return-void
.end method
