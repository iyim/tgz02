.class Lcom/taobao/orange/OrangeConfigImpl$4;
.super Ljava/lang/Object;
.source "OrangeConfigImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/orange/OrangeConfigImpl;->regCommonListener([Ljava/lang/String;Lcom/taobao/orange/OBaseListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/orange/OrangeConfigImpl;

.field final synthetic val$listenerStub:Lcom/taobao/orange/aidl/OrangeConfigListenerStub;

.field final synthetic val$namespaces:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/orange/OrangeConfigImpl;[Ljava/lang/String;Lcom/taobao/orange/aidl/OrangeConfigListenerStub;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/taobao/orange/OrangeConfigImpl$4;->this$0:Lcom/taobao/orange/OrangeConfigImpl;

    iput-object p2, p0, Lcom/taobao/orange/OrangeConfigImpl$4;->val$namespaces:[Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/orange/OrangeConfigImpl$4;->val$listenerStub:Lcom/taobao/orange/aidl/OrangeConfigListenerStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/taobao/orange/OrangeConfigImpl$4;->this$0:Lcom/taobao/orange/OrangeConfigImpl;

    iget-object v1, p0, Lcom/taobao/orange/OrangeConfigImpl$4;->val$namespaces:[Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/orange/OrangeConfigImpl$4;->val$listenerStub:Lcom/taobao/orange/aidl/OrangeConfigListenerStub;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/orange/OrangeConfigImpl;->registerListener([Ljava/lang/String;Lcom/taobao/orange/aidl/OrangeConfigListenerStub;)V

    return-void
.end method
