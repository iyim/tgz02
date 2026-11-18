.class final Lcom/alipay/apmobilesecuritysdk/macro/AgentStub$1;
.super Ljava/lang/Object;
.source "AgentStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/apmobilesecuritysdk/macro/AgentStub;->verifyAgentAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$apdidToken:Ljava/lang/String;

.field final synthetic val$clientKey:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/macro/AgentStub$1;->val$apdidToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/apmobilesecuritysdk/macro/AgentStub$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/apmobilesecuritysdk/macro/AgentStub$1;->val$clientKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/macro/AgentStub$1;->val$apdidToken:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/macro/AgentStub$1;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/macro/AgentStub$1;->val$clientKey:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/apmobilesecuritysdk/macro/AgentStub;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
