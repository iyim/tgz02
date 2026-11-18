.class public Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9$AndroidPInstallObserver;
.super Ljava/lang/Object;
.source "InstallAfter9.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AndroidPInstallObserver"
.end annotation


# instance fields
.field finished:Z

.field result:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 175
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9$AndroidPInstallObserver;->finished:Z

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;)V
    .locals 1

    .line 179
    monitor-enter p0

    const/4 v0, 0x1

    .line 180
    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9$AndroidPInstallObserver;->finished:Z

    .line 181
    iput p1, p0, Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9$AndroidPInstallObserver;->result:I

    .line 182
    invoke-static {p2}, Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 184
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
