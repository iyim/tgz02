.class public final enum Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;
.super Ljava/lang/Enum;
.source "ImagePreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoadStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

.field public static final enum AlwaysOrigin:Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

.field public static final enum AlwaysThumb:Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

.field public static final enum Default:Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

.field public static final enum NetworkAuto:Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 440
    new-instance v0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

    const/4 v1, 0x0

    const-string v2, "AlwaysOrigin"

    invoke-direct {v0, v2, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;->AlwaysOrigin:Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

    .line 445
    new-instance v0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

    const/4 v2, 0x1

    const-string v3, "AlwaysThumb"

    invoke-direct {v0, v3, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;->AlwaysThumb:Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

    .line 450
    new-instance v0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

    const/4 v3, 0x2

    const-string v4, "NetworkAuto"

    invoke-direct {v0, v4, v3}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;->NetworkAuto:Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

    .line 455
    new-instance v0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

    const/4 v4, 0x3

    const-string v5, "Default"

    invoke-direct {v0, v5, v4}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;->Default:Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

    const/4 v0, 0x4

    .line 436
    new-array v0, v0, [Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

    sget-object v5, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;->AlwaysOrigin:Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

    aput-object v5, v0, v1

    sget-object v1, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;->AlwaysThumb:Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;->NetworkAuto:Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;->Default:Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;->$VALUES:[Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 436
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;
    .locals 1

    .line 436
    const-class v0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;
    .locals 1

    .line 436
    sget-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;->$VALUES:[Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

    invoke-virtual {v0}, [Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

    return-object v0
.end method
