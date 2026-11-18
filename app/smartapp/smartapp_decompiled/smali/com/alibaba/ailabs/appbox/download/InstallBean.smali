.class public Lcom/alibaba/ailabs/appbox/download/InstallBean;
.super Ljava/lang/Object;
.source "InstallBean.java"


# static fields
.field public static final INSTALL_STATE_ERROR:I = 0x3

.field public static final INSTALL_STATE_INSTALLING:I = 0x1

.field public static final INSTALL_STATE_NONE:I = 0x0

.field public static final INSTALL_STATE_SUCCESS:I = 0x2


# instance fields
.field private downPath:Ljava/lang/String;

.field private errorMsg:Ljava/lang/String;

.field public size:I

.field private state:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/alibaba/ailabs/appbox/download/InstallBean;->state:I

    .line 42
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/download/InstallBean;->url:Ljava/lang/String;

    .line 43
    iput p2, p0, Lcom/alibaba/ailabs/appbox/download/InstallBean;->size:I

    .line 44
    iput p3, p0, Lcom/alibaba/ailabs/appbox/download/InstallBean;->state:I

    return-void
.end method


# virtual methods
.method public getDownPath()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/InstallBean;->downPath:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/InstallBean;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/alibaba/ailabs/appbox/download/InstallBean;->state:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/InstallBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setDownPath(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/download/InstallBean;->downPath:Ljava/lang/String;

    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/download/InstallBean;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/alibaba/ailabs/appbox/download/InstallBean;->state:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadBean{url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/download/InstallBean;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/appbox/download/InstallBean;->state:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errorMsg=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/download/InstallBean;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/appbox/download/InstallBean;->size:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", downPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/download/InstallBean;->downPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
