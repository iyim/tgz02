.class Lcom/ut/mini/module/plugin/UTPluginMgr$1;
.super Ljava/lang/Object;
.source "UTPluginMgr.java"

# interfaces
.implements Lcom/alibaba/analytics/core/config/UTClientConfigMgr$IConfigChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ut/mini/module/plugin/UTPluginMgr;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ut/mini/module/plugin/UTPluginMgr;


# direct methods
.method constructor <init>(Lcom/ut/mini/module/plugin/UTPluginMgr;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/ut/mini/module/plugin/UTPluginMgr$1;->this$0:Lcom/ut/mini/module/plugin/UTPluginMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "plugin"

    return-object v0
.end method

.method public onChange(Ljava/lang/String;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/ut/mini/module/plugin/UTPluginMgr$1;->this$0:Lcom/ut/mini/module/plugin/UTPluginMgr;

    invoke-static {v0, p1}, Lcom/ut/mini/module/plugin/UTPluginMgr;->access$000(Lcom/ut/mini/module/plugin/UTPluginMgr;Ljava/lang/String;)V

    return-void
.end method
