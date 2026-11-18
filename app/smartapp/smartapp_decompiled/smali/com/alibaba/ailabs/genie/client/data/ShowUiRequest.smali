.class public Lcom/alibaba/ailabs/genie/client/data/ShowUiRequest;
.super Lcom/alibaba/ailabs/genie/client/data/BaseReqData;
.source "ShowUiRequest.java"


# instance fields
.field private keepShow:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/client/data/BaseReqData;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/client/data/ShowUiRequest;->keepShow:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/client/data/BaseReqData;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/client/data/ShowUiRequest;->keepShow:Z

    .line 10
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/client/data/ShowUiRequest;->keepShow:Z

    return-void
.end method


# virtual methods
.method public isKeepShow()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/client/data/ShowUiRequest;->keepShow:Z

    return v0
.end method

.method public setKeepShow(Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/client/data/ShowUiRequest;->keepShow:Z

    return-void
.end method
