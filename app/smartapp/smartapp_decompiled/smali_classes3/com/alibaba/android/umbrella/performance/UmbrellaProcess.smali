.class public Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;
.super Ljava/lang/Object;
.source "UmbrellaProcess.java"


# static fields
.field public static final DATAPARSE:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

.field public static final DRAWVIEW:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

.field public static final INIT:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

.field public static final LIFECYCLE:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

.field public static final NETWORK:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

.field public static final PAGELOAD:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

.field public static final SUB_BIND_VIEW:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

.field public static final SUB_CREATE_VIEW:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;


# instance fields
.field private name:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

    const/4 v1, 0x1

    const-string v2, "init"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;->INIT:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

    .line 9
    new-instance v0, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

    const/4 v1, 0x2

    const-string v2, "lifeCycle"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;->LIFECYCLE:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

    .line 10
    new-instance v0, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

    const/4 v1, 0x3

    const-string v2, "netWork"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;->NETWORK:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

    .line 11
    new-instance v0, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

    const/4 v1, 0x4

    const-string v2, "dataParse"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;->DATAPARSE:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

    .line 12
    new-instance v0, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

    const/4 v1, 0x5

    const-string v2, "drawView"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;->DRAWVIEW:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

    .line 13
    new-instance v0, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

    const/4 v1, 0x6

    const-string v2, "pageLoad"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;->PAGELOAD:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

    .line 14
    new-instance v0, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

    const/4 v1, 0x7

    const-string v2, "createView"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;->SUB_CREATE_VIEW:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

    .line 15
    new-instance v0, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

    const/16 v1, 0x8

    const-string v2, "bindData"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;->SUB_BIND_VIEW:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;->type:I

    .line 22
    iput-object p2, p0, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;->type:I

    return v0
.end method
