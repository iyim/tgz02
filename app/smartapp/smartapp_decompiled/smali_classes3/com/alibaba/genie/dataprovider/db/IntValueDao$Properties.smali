.class public Lcom/alibaba/genie/dataprovider/db/IntValueDao$Properties;
.super Ljava/lang/Object;
.source "IntValueDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/dataprovider/db/IntValueDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final HashCodeOfKey:Lorg/greenrobot/greendao/Property;

.field public static final Id:Lorg/greenrobot/greendao/Property;

.field public static final Key:Lorg/greenrobot/greendao/Property;

.field public static final Value:Lorg/greenrobot/greendao/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 25
    new-instance v6, Lorg/greenrobot/greendao/Property;

    const-class v2, Ljava/lang/Long;

    const/4 v1, 0x0

    const-string v3, "id"

    const/4 v4, 0x1

    const-string v5, "_id"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v6, Lcom/alibaba/genie/dataprovider/db/IntValueDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    .line 26
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/Integer;

    const/4 v8, 0x1

    const-string v10, "hashCodeOfKey"

    const/4 v11, 0x0

    const-string v12, "HASH_CODE_OF_KEY"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/alibaba/genie/dataprovider/db/IntValueDao$Properties;->HashCodeOfKey:Lorg/greenrobot/greendao/Property;

    .line 27
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/4 v2, 0x2

    const-string v4, "key"

    const/4 v5, 0x0

    const-string v6, "KEY"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/alibaba/genie/dataprovider/db/IntValueDao$Properties;->Key:Lorg/greenrobot/greendao/Property;

    .line 28
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/Integer;

    const/4 v8, 0x3

    const-string v10, "value"

    const-string v12, "VALUE"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/alibaba/genie/dataprovider/db/IntValueDao$Properties;->Value:Lorg/greenrobot/greendao/Property;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
