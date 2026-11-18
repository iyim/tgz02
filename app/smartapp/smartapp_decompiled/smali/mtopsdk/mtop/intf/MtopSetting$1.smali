.class final Lmtopsdk/mtop/intf/MtopSetting$1;
.super Ljava/lang/Object;
.source "MtopSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmtopsdk/mtop/intf/MtopSetting;->setMtopConfigListener(Lmtopsdk/common/config/MtopConfigListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mtopConfigListener:Lmtopsdk/common/config/MtopConfigListener;


# direct methods
.method constructor <init>(Lmtopsdk/common/config/MtopConfigListener;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lmtopsdk/mtop/intf/MtopSetting$1;->val$mtopConfigListener:Lmtopsdk/common/config/MtopConfigListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 288
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopSetting$1;->val$mtopConfigListener:Lmtopsdk/common/config/MtopConfigListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 290
    invoke-static {v0}, Lmtopsdk/mtop/intf/MtopSetting;->getMtopConfigByID(Ljava/lang/String;)Lmtopsdk/mtop/global/MtopConfig;

    move-result-object v0

    .line 291
    iget-object v1, v0, Lmtopsdk/mtop/global/MtopConfig;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lmtopsdk/mtop/intf/MtopSetting$1;->val$mtopConfigListener:Lmtopsdk/common/config/MtopConfigListener;

    iget-object v0, v0, Lmtopsdk/mtop/global/MtopConfig;->context:Landroid/content/Context;

    invoke-interface {v1, v0}, Lmtopsdk/common/config/MtopConfigListener;->initConfig(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
