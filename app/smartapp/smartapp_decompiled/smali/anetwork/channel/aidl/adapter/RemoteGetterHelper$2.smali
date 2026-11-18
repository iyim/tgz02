.class final Lanetwork/channel/aidl/adapter/RemoteGetterHelper$2;
.super Ljava/lang/Object;
.source "RemoteGetterHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->asyncBindService(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 134
    sget-boolean v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->bBinding:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 135
    sput-boolean v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->bBinding:Z

    const/4 v1, 0x0

    .line 136
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "anet.RemoteGetter"

    const-string v3, "binding service timeout. reset status!"

    invoke-static {v2, v3, v1, v0}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
