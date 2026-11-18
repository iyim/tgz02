.class public Lcom/alibaba/ailabs/genie/resmanagerlib/ResListener;
.super Lcom/alibaba/ailabs/genie/resmanager/IResListener$Stub;
.source "ResListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/resmanagerlib/ResListener$IResCallback;
    }
.end annotation


# static fields
.field public static final EVENT_INUSEING:I = 0x2

.field public static final EVENT_OFFLINE:I = 0x0

.field public static final EVENT_ONLINE:I = 0x1


# instance fields
.field private mCallback:Lcom/alibaba/ailabs/genie/resmanagerlib/ResListener$IResCallback;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/resmanagerlib/ResListener$IResCallback;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/resmanager/IResListener$Stub;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/resmanagerlib/ResListener;->mCallback:Lcom/alibaba/ailabs/genie/resmanagerlib/ResListener$IResCallback;

    return-void
.end method


# virtual methods
.method public onEvent(IILjava/lang/String;)Z
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " events:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "system_resource"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/resmanagerlib/ResListener;->mCallback:Lcom/alibaba/ailabs/genie/resmanagerlib/ResListener$IResCallback;

    if-eqz v0, :cond_0

    .line 21
    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/resmanagerlib/ResListener$IResCallback;->onResult(IILjava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
