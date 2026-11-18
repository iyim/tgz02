.class public Lcom/alibaba/ailabs/genie/genieboot/BootApplication;
.super Landroid/app/Application;
.source "BootApplication.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/IBaseApplication;


# static fields
.field public static final TAG:Ljava/lang/String; = "BootApp"

.field private static mBootApplication:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .line 20
    sget-object v0, Lcom/alibaba/ailabs/genie/genieboot/BootApplication;->mBootApplication:Landroid/app/Application;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/app/Application;)V
    .locals 0

    .line 16
    sput-object p1, Lcom/alibaba/ailabs/genie/genieboot/BootApplication;->mBootApplication:Landroid/app/Application;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
