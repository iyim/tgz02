.class public Lcom/alibaba/ailabs/childmode/mtop/KidModeCodeGetResponseData;
.super Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;
.source "KidModeCodeGetResponseData.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/childmode/mtop/KidModeCodeGetResponseData$Model;
    }
.end annotation


# instance fields
.field private model:Lcom/alibaba/ailabs/childmode/mtop/KidModeCodeGetResponseData$Model;


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
.method public getModel()Lcom/alibaba/ailabs/childmode/mtop/KidModeCodeGetResponseData$Model;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/mtop/KidModeCodeGetResponseData;->model:Lcom/alibaba/ailabs/childmode/mtop/KidModeCodeGetResponseData$Model;

    return-object v0
.end method

.method public setModel(Lcom/alibaba/ailabs/childmode/mtop/KidModeCodeGetResponseData$Model;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/mtop/KidModeCodeGetResponseData;->model:Lcom/alibaba/ailabs/childmode/mtop/KidModeCodeGetResponseData$Model;

    return-void
.end method
