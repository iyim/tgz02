.class public abstract Lcom/alibaba/ailabs/agui/bean/AbstractItemInfo;
.super Ljava/lang/Object;
.source "AbstractItemInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public abstract getCopy(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public isSupportIncrement()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract toEventJson()Lorg/json/JSONObject;
.end method

.method public abstract toEventJson(Ljava/lang/Object;)Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation
.end method
