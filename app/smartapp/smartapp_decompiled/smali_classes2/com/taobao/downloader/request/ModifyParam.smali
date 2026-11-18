.class public Lcom/taobao/downloader/request/ModifyParam;
.super Ljava/lang/Object;
.source "ModifyParam.java"


# instance fields
.field public callbackCondition:Ljava/lang/Integer;

.field public foreground:Ljava/lang/Boolean;

.field public network:Ljava/lang/Integer;

.field public status:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/taobao/downloader/request/ModifyParam;->status:Ljava/lang/Integer;

    return-void
.end method
