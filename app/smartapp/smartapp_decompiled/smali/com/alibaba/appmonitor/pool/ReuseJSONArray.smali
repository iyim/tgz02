.class public Lcom/alibaba/appmonitor/pool/ReuseJSONArray;
.super Lcom/alibaba/fastjson/JSONArray;
.source "ReuseJSONArray.java"

# interfaces
.implements Lcom/alibaba/appmonitor/pool/Reusable;


# static fields
.field private static final serialVersionUID:J = -0x3ae436178d261c2eL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public clean()V
    .locals 3

    .line 21
    invoke-virtual {p0}, Lcom/alibaba/appmonitor/pool/ReuseJSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 22
    instance-of v2, v1, Lcom/alibaba/appmonitor/pool/Reusable;

    if-eqz v2, :cond_0

    .line 23
    invoke-static {}, Lcom/alibaba/appmonitor/pool/BalancedPool;->getInstance()Lcom/alibaba/appmonitor/pool/BalancedPool;

    move-result-object v2

    check-cast v1, Lcom/alibaba/appmonitor/pool/Reusable;

    invoke-virtual {v2, v1}, Lcom/alibaba/appmonitor/pool/BalancedPool;->offer(Lcom/alibaba/appmonitor/pool/Reusable;)V

    goto :goto_0

    .line 26
    :cond_1
    invoke-super {p0}, Lcom/alibaba/fastjson/JSONArray;->clear()V

    return-void
.end method

.method public varargs fill([Ljava/lang/Object;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
