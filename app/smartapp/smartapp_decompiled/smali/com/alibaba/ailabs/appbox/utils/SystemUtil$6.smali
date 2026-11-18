.class final Lcom/alibaba/ailabs/appbox/utils/SystemUtil$6;
.super Ljava/lang/Object;
.source "SystemUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->onInstallListChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x1

    .line 772
    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->getInstalledAppList(Z)Ljava/util/ArrayList;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
