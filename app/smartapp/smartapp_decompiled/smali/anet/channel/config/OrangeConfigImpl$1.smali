.class Lanet/channel/config/OrangeConfigImpl$1;
.super Ljava/lang/Object;
.source "OrangeConfigImpl.java"

# interfaces
.implements Lcom/taobao/orange/OrangeConfigListenerV1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/config/OrangeConfigImpl;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanet/channel/config/OrangeConfigImpl;


# direct methods
.method constructor <init>(Lanet/channel/config/OrangeConfigImpl;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lanet/channel/config/OrangeConfigImpl$1;->this$0:Lanet/channel/config/OrangeConfigImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigUpdate(Ljava/lang/String;Z)V
    .locals 0

    .line 78
    iget-object p2, p0, Lanet/channel/config/OrangeConfigImpl$1;->this$0:Lanet/channel/config/OrangeConfigImpl;

    invoke-virtual {p2, p1}, Lanet/channel/config/OrangeConfigImpl;->onConfigUpdate(Ljava/lang/String;)V

    return-void
.end method
