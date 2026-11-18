.class public Lcom/ut/mini/module/process/MultiProcessManager;
.super Ljava/lang/Object;
.source "MultiProcessManager.java"


# static fields
.field private static multiProcessAdapter:Lcom/ut/mini/module/process/AbsMultiProcessAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getMultiProcessAdapter()Lcom/ut/mini/module/process/AbsMultiProcessAdapter;
    .locals 1

    .line 11
    sget-object v0, Lcom/ut/mini/module/process/MultiProcessManager;->multiProcessAdapter:Lcom/ut/mini/module/process/AbsMultiProcessAdapter;

    return-object v0
.end method

.method public static setMultiProcessAdapter(Lcom/ut/mini/module/process/AbsMultiProcessAdapter;)V
    .locals 0

    .line 7
    sput-object p0, Lcom/ut/mini/module/process/MultiProcessManager;->multiProcessAdapter:Lcom/ut/mini/module/process/AbsMultiProcessAdapter;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
