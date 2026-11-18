.class public Lcom/alibaba/android/ultron/vfw/instance/UltronError;
.super Ljava/lang/RuntimeException;
.source "UltronError.java"


# instance fields
.field public code:Ljava/lang/String;

.field public domain:Ljava/lang/String;

.field public extraMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
