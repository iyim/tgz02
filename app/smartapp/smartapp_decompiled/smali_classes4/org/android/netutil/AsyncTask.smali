.class public abstract Lorg/android/netutil/AsyncTask;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# instance fields
.field protected done:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected onTaskFinish()V
    .locals 1

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lorg/android/netutil/AsyncTask;->done:Z

    return-void
.end method
