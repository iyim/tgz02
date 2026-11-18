.class public final synthetic Lcom/alibaba/ailabs/genie/smartapp/task/cache/-$$Lambda$BootTaskStartAppFactory$Vf5u_5fwjiZdCO240WI4ydlIQOY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory$Lazy;


# static fields
.field public static final synthetic INSTANCE:Lcom/alibaba/ailabs/genie/smartapp/task/cache/-$$Lambda$BootTaskStartAppFactory$Vf5u_5fwjiZdCO240WI4ydlIQOY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/-$$Lambda$BootTaskStartAppFactory$Vf5u_5fwjiZdCO240WI4ydlIQOY;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/smartapp/task/cache/-$$Lambda$BootTaskStartAppFactory$Vf5u_5fwjiZdCO240WI4ydlIQOY;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/-$$Lambda$BootTaskStartAppFactory$Vf5u_5fwjiZdCO240WI4ydlIQOY;->INSTANCE:Lcom/alibaba/ailabs/genie/smartapp/task/cache/-$$Lambda$BootTaskStartAppFactory$Vf5u_5fwjiZdCO240WI4ydlIQOY;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory;->lambda$new$9()Lcom/alibaba/ailabs/genie/smartapp/task/cache/BootTaskStartAppFactory$StartCachedApp;

    move-result-object v0

    return-object v0
.end method
