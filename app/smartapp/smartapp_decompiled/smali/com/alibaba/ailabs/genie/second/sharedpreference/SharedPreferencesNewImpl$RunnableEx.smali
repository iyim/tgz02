.class public abstract Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$RunnableEx;
.super Ljava/lang/Object;
.source "SharedPreferencesNewImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RunnableEx"
.end annotation


# instance fields
.field private mArg:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getArg()Ljava/lang/Object;
    .locals 1

    .line 1360
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$RunnableEx;->mArg:Ljava/lang/Object;

    return-object v0
.end method

.method public setArg(Ljava/lang/Object;)V
    .locals 0

    .line 1356
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$RunnableEx;->mArg:Ljava/lang/Object;

    return-void
.end method
